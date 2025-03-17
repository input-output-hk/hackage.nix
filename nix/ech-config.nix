{
  "0.0.0" = {
    sha256 = "c442ec2344468d1a4f2147d8768569b8e34db735b161c00c59af1712ca82a1fa";
    revisions = {
      r0 = {
        nix = import ../hackage/ech-config-0.0.0-r0-6ad451f18d6a4d886546024172d6ac8e309938b92571f2a09e4f94efdb7e92b6.nix;
        revNum = 0;
        sha256 = "6ad451f18d6a4d886546024172d6ac8e309938b92571f2a09e4f94efdb7e92b6";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "b236b6d7ea1385c280b76051edc7d8f6db31c9cb7b35df5c06f5a0bd75b4feba";
    revisions = {
      r0 = {
        nix = import ../hackage/ech-config-0.0.1-r0-e64020ffdbaaf8734574dd8b20b8b0d4c367546db4ac2f50b4ad74f1a6447ba5.nix;
        revNum = 0;
        sha256 = "e64020ffdbaaf8734574dd8b20b8b0d4c367546db4ac2f50b4ad74f1a6447ba5";
      };
      default = "r0";
    };
  };
}