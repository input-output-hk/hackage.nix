{
  "0.0" = {
    sha256 = "be07a88ec589a21a533e34c972129d8d53fa568aca3db886f89f0015d82a8f99";
    revisions = {
      r0 = {
        nix = import ../hackage/comfort-glpk-0.0-r0-dc3cdb253259d8fab8c3b8388c9a66181e8858b0b7a4ef97ebc667224a989884.nix;
        revNum = 0;
        sha256 = "dc3cdb253259d8fab8c3b8388c9a66181e8858b0b7a4ef97ebc667224a989884";
        };
      r1 = {
        nix = import ../hackage/comfort-glpk-0.0-r1-f7b02fe994437efb6acb1f4f2b9d227b3977d74b6a6881ff43472b8b7cdda789.nix;
        revNum = 1;
        sha256 = "f7b02fe994437efb6acb1f4f2b9d227b3977d74b6a6881ff43472b8b7cdda789";
        };
      default = "r1";
      };
    };
  "0.0.0.1" = {
    sha256 = "b0646a6bfbfcc8f8159e53a0dba33b356e8ba12cc72f5e5a5bfcf57e061fb300";
    revisions = {
      r0 = {
        nix = import ../hackage/comfort-glpk-0.0.0.1-r0-afc11e1306b702bf1646fd53b30c7299aaa01cf8e82194ab4bf38cbcdb8561a3.nix;
        revNum = 0;
        sha256 = "afc11e1306b702bf1646fd53b30c7299aaa01cf8e82194ab4bf38cbcdb8561a3";
        };
      default = "r0";
      };
    };
  }