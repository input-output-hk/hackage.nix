{
  "0.1.0" = {
    sha256 = "5cf77bd9d16432a815f5abfa5d31bc5d46818b1ddbf0e7f9d8ca5f865ca6836f";
    revisions = {
      r0 = {
        nix = import ../hackage/keymapp-0.1.0-r0-951c9de7610bc34448d67b46e82a2815fd36649439d26dc1b6fe15851169349b.nix;
        revNum = 0;
        sha256 = "951c9de7610bc34448d67b46e82a2815fd36649439d26dc1b6fe15851169349b";
      };
      r1 = {
        nix = import ../hackage/keymapp-0.1.0-r1-dc4e9d7e1d3d8b6b235db561fe7129b50a818dc3fafd5367d87fa9bfd36073e8.nix;
        revNum = 1;
        sha256 = "dc4e9d7e1d3d8b6b235db561fe7129b50a818dc3fafd5367d87fa9bfd36073e8";
      };
      default = "r1";
    };
  };
}