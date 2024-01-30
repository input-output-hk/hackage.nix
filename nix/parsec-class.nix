{
  "1.0.0.0" = {
    sha256 = "029c4ec5e6b0efd0505f1051c29c02060ddab3018b9aef4c4ae96a99f58e1773";
    revisions = {
      r0 = {
        nix = import ../hackage/parsec-class-1.0.0.0-r0-20bff43537f906aa0ae6a1e71f9b4a24854f35b452c391e1e7135c997c5e216b.nix;
        revNum = 0;
        sha256 = "20bff43537f906aa0ae6a1e71f9b4a24854f35b452c391e1e7135c997c5e216b";
        };
      r1 = {
        nix = import ../hackage/parsec-class-1.0.0.0-r1-fd92f995139c3e3b094ca5221f8375621d7999e72d9d5ad6423b192df024ce2b.nix;
        revNum = 1;
        sha256 = "fd92f995139c3e3b094ca5221f8375621d7999e72d9d5ad6423b192df024ce2b";
        };
      default = "r1";
      };
    };
  "1.0.1.0" = {
    sha256 = "068686c03627ffca77128a762de295c4a43095b9e8dbe3829efc91fed00c418c";
    revisions = {
      r0 = {
        nix = import ../hackage/parsec-class-1.0.1.0-r0-d84134214fa73a575b0776e6051e4a11eb8cbc4f64e3f0cceb672a56eebaf5b8.nix;
        revNum = 0;
        sha256 = "d84134214fa73a575b0776e6051e4a11eb8cbc4f64e3f0cceb672a56eebaf5b8";
        };
      default = "r0";
      };
    };
  }