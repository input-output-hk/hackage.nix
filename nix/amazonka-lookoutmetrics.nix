{
  "2.0" = {
    sha256 = "dda192711e643cfa55a20811c1d93c162461459c9d5225ce60e98b1e4306263f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-lookoutmetrics-2.0-r0-177b00abaeb2dc4d6e055e77ecdeaf1bde1c332db898c5762524c7e2679842d8.nix;
        revNum = 0;
        sha256 = "177b00abaeb2dc4d6e055e77ecdeaf1bde1c332db898c5762524c7e2679842d8";
      };
      r1 = {
        nix = import ../hackage/amazonka-lookoutmetrics-2.0-r1-81d71e6a66c8d350de5ef558986d21d28fc540fdc27acd11ad6b8464ba0ec2e7.nix;
        revNum = 1;
        sha256 = "81d71e6a66c8d350de5ef558986d21d28fc540fdc27acd11ad6b8464ba0ec2e7";
      };
      default = "r1";
    };
  };
}