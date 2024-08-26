{
  "0.10" = {
    sha256 = "5cdd3187b202441df434f83757ab1a2643f883729d206cc2f2ee791ee3c04eee";
    revisions = {
      r0 = {
        nix = import ../hackage/postgresql-libpq-pkgconfig-0.10-r0-d69e1e6512908bd36bc56378ae7e1159fef53a4da445db2a7784be01e314a594.nix;
        revNum = 0;
        sha256 = "d69e1e6512908bd36bc56378ae7e1159fef53a4da445db2a7784be01e314a594";
      };
      default = "r0";
    };
  };
  "0.11" = {
    sha256 = "f9c50ae1f48a1efd0df4fab98abd5e41104ad1e3c606c32f737061d02f9ec0a6";
    revisions = {
      r0 = {
        nix = import ../hackage/postgresql-libpq-pkgconfig-0.11-r0-9d6edd8ee105cfe7145b138c8f8bf582cddbd13af36c4302aeff891003efdc6f.nix;
        revNum = 0;
        sha256 = "9d6edd8ee105cfe7145b138c8f8bf582cddbd13af36c4302aeff891003efdc6f";
      };
      default = "r0";
    };
  };
}