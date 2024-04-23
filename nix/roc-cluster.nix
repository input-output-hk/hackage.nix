{
  "0.1.0.0" = {
    sha256 = "1a4dfda777d454118a1ac406fec59b29bae34f2750849ea2dd0beb157e239d5f";
    revisions = {
      r0 = {
        nix = import ../hackage/roc-cluster-0.1.0.0-r0-08fc688827eebd8759cfb67362144c9fcee23fbb69c6a86599904aa435e7d2af.nix;
        revNum = 0;
        sha256 = "08fc688827eebd8759cfb67362144c9fcee23fbb69c6a86599904aa435e7d2af";
      };
      r1 = {
        nix = import ../hackage/roc-cluster-0.1.0.0-r1-0d267940263a8292dbff0f87b3bd2c43cceb937ce7d687191cb981d42b383060.nix;
        revNum = 1;
        sha256 = "0d267940263a8292dbff0f87b3bd2c43cceb937ce7d687191cb981d42b383060";
      };
      default = "r1";
    };
  };
}