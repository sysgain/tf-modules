resource "null_resource" "remote_exec" {
  count = "${var.loop_count}"

  provisioner "remote-exec" {
    connection {
      agent       = false
      timeout     = "20m"
      host        = "${var.instance_ip[count.index]}"
      port        = "${var.ssh_port}"
      user        = "${var.instance_username}"
      private_key = "${var.ssh_private_key}"
    }

    inline = [
      "iqn1=${var.iqn1[count.index]}",
      "blockIp1=${var.blockIp1[count.index]}",
      "iqn2=${var.iqn2[count.index]}",
      "blockIp2=${var.blockIp2[count.index]}",
      "sudo iscsiadm -m node -o new -T $iqn1 -p $blockIp1:3260",
      "sudo iscsiadm -m node -o update -T $iqn1 -n node.startup -v automatic",
      "sudo iscsiadm -m node -T $iqn1 -p $blockIp1:3260 -l",
      "sudo iscsiadm -m node -o new -T $iqn2 -p $blockIp2:3260",
      "sudo iscsiadm -m node -o update -T $iqn2 -n node.startup -v automatic",
      "sudo iscsiadm -m node -T $iqn2 -p $blockIp2:3260 -l",
      "cd /",
      "sudo pvcreate /dev/sdb",
      "sudo pvcreate /dev/sdc",
      "sudo vgcreate data01vg /dev/sdb",
      "sudo vgcreate data02vg /dev/sdc",
      "sudo lvcreate -l 100%FREE -n data01lv data01vg",
      "sudo lvcreate -l 100%FREE -n data02lv data02vg",
      "sleep 30",
      "sudo mkfs -t ext4 /dev/data01vg/data01lv",
      "sleep 30",
      "sudo mkfs -t ext4 /dev/data02vg/data02lv",
      "sudo mkdir /data01",
      "sudo mkdir /data02",
      "sudo chmod 777 /etc/fstab",
      "sudo echo  '/dev/data01vg/data01lv  /data01  ext4  defaults,noatime,_netdev  0  2' >> /etc/fstab",
      "sudo echo  '/dev/data02vg/data02lv  /data02  ext4  defaults,noatime,_netdev  0  2' >> /etc/fstab",
      "sudo chmod 644 /etc/fstab",
      "sudo mount -a",
      "sudo mount -a",
    ]
  }
}
