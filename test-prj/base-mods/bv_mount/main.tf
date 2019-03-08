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
      "iqn=${var.iqn[count.index]}",
      "blockIp=${var.blockIp[count.index]}",
      "sudo iscsiadm -m node -o new -T $iqn -p $blockIp:3260",
      "sudo iscsiadm -m node -o update -T $iqn -n node.startup -v automatic",
      "sudo iscsiadm -m node -T $iqn -p $blockIp:3260 -l",
      "cd /",
      "sudo pvcreate /dev/sdb",
      "sudo vgcreate data01vg /dev/sdb",
      "sudo lvcreate -l 100%FREE -n data01lv data01vg",
      "sleep 30",
      "sudo mkfs -t ext4 /dev/data01vg/data01lv",
      "sleep 30",
      "sudo mkdir /data01",
      "sudo chmod 777 /etc/fstab",
      "sudo echo '/dev/data01vg/data01lv  /data01  ext4  defaults,noatime,_netdev  0  2' >> /etc/fstab",
      "sudo chmod 644 /etc/fstab",
      "sudo mount -a",
    ]
  }
}
