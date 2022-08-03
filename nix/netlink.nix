{
  "0.1" = {
    sha256 = "9653369535aac39f759d20ab34e49397b6d9d218e3a108de437394596bf75170";
    revisions = {
      r0 = {
        nix = import ../hackage/netlink-0.1-r0-7cf9229b949bb276a518fff7285cc0320d79c7f9dcd92d1619f1283387e6279d.nix;
        revNum = 0;
        sha256 = "7cf9229b949bb276a518fff7285cc0320d79c7f9dcd92d1619f1283387e6279d";
        };
      r1 = {
        nix = import ../hackage/netlink-0.1-r1-a95c52a24e2db0fb3670350b3205c62d9e30bd8a596c34885cb65a3b73452294.nix;
        revNum = 1;
        sha256 = "a95c52a24e2db0fb3670350b3205c62d9e30bd8a596c34885cb65a3b73452294";
        };
      default = "r1";
      };
    };
  "1.0.0.4" = {
    sha256 = "94061ae1809a11d564ae3a45972c3a49dfbb01054a937cc4d5a2805963260a6d";
    revisions = {
      r0 = {
        nix = import ../hackage/netlink-1.0.0.4-r0-15ec56f003ad7426091b930c0269c201f8b8593458048bb9e851993f497adca4.nix;
        revNum = 0;
        sha256 = "15ec56f003ad7426091b930c0269c201f8b8593458048bb9e851993f497adca4";
        };
      default = "r0";
      };
    };
  "1.1.0.0" = {
    sha256 = "48f59a7822b2e3dab8baed1d1cd3a3dca1e7744a82f9078c71ec1ce3f6ddf083";
    revisions = {
      r0 = {
        nix = import ../hackage/netlink-1.1.0.0-r0-b9d7ec74089647e5ee4b6df7fea3f7f3aac3a47fab277aef629531918a29f9f8.nix;
        revNum = 0;
        sha256 = "b9d7ec74089647e5ee4b6df7fea3f7f3aac3a47fab277aef629531918a29f9f8";
        };
      default = "r0";
      };
    };
  "1.1.1.0" = {
    sha256 = "c05939d6a61280526ad79b62b3d52e525e4b27d3e0f0f59ab94a8fb499ef1ae1";
    revisions = {
      r0 = {
        nix = import ../hackage/netlink-1.1.1.0-r0-d83424b5ba9921191449e4b1f53c7cba7f4375f2c55a9b737c77e982e1f40d00.nix;
        revNum = 0;
        sha256 = "d83424b5ba9921191449e4b1f53c7cba7f4375f2c55a9b737c77e982e1f40d00";
        };
      default = "r0";
      };
    };
  }