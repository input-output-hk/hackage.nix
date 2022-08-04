{
  "0.1.0.0" = {
    sha256 = "acee18ae63b5fbb93c32cd1256b362e7d2a3e4c8360a0325df724a6d8bc88bf7";
    revisions = {
      r0 = {
        nix = import ../hackage/skip-var-0.1.0.0-r0-c24650d6935137c6471c677056d1fc639fb19044493279f0d317015882246bd6.nix;
        revNum = 0;
        sha256 = "c24650d6935137c6471c677056d1fc639fb19044493279f0d317015882246bd6";
        };
      default = "r0";
      };
    };
  "0.1.1.0" = {
    sha256 = "bfbce57abd47c9c892f734b5c7d2bccad90fa5f8f8a6d4747cca15d2a493d41e";
    revisions = {
      r0 = {
        nix = import ../hackage/skip-var-0.1.1.0-r0-eccc3c8e406912533338bc9a66a326d3899be7b96352fcc736cc0e35bbbc6e6e.nix;
        revNum = 0;
        sha256 = "eccc3c8e406912533338bc9a66a326d3899be7b96352fcc736cc0e35bbbc6e6e";
        };
      r1 = {
        nix = import ../hackage/skip-var-0.1.1.0-r1-48c983c7ec8a03e622fa4a3b21e7eecdd54824f3ef85e410c014f64353f0826e.nix;
        revNum = 1;
        sha256 = "48c983c7ec8a03e622fa4a3b21e7eecdd54824f3ef85e410c014f64353f0826e";
        };
      default = "r1";
      };
    };
  }