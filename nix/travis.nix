{
  "0.1.0.0" = {
    sha256 = "83ede0c9915a2eb238bf75a461eb790cd6325596abcd2ce856a1609d34a938fe";
    revisions = {
      r0 = {
        nix = import ../hackage/travis-0.1.0.0-r0-a1d881596d2849f2a13876f8e5f4b7fb10012e822ec316e4e2a2ae38a9e98f4f.nix;
        revNum = 0;
        sha256 = "a1d881596d2849f2a13876f8e5f4b7fb10012e822ec316e4e2a2ae38a9e98f4f";
        };
      r1 = {
        nix = import ../hackage/travis-0.1.0.0-r1-6ceee2ffb33920fd40693d7bdc1768dd1b90cc9b4c84e13e524e1cd373eff345.nix;
        revNum = 1;
        sha256 = "6ceee2ffb33920fd40693d7bdc1768dd1b90cc9b4c84e13e524e1cd373eff345";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "eed3dc277851940c32df93f6d3f1343f7a0f0d35998fdcc73f0ffdc8da5ecdd6";
    revisions = {
      r0 = {
        nix = import ../hackage/travis-0.1.0.1-r0-51f219571c5c868e2b7d32fb9eebcd13b27890593fc246e4166686be6fe755be.nix;
        revNum = 0;
        sha256 = "51f219571c5c868e2b7d32fb9eebcd13b27890593fc246e4166686be6fe755be";
        };
      r1 = {
        nix = import ../hackage/travis-0.1.0.1-r1-d31615dbda7633213482642731926b7f809f672a2a12b334c3e8e0a5b827dd8d.nix;
        revNum = 1;
        sha256 = "d31615dbda7633213482642731926b7f809f672a2a12b334c3e8e0a5b827dd8d";
        };
      default = "r1";
      };
    };
  }