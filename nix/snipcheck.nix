{
  "0.1.0.0" = {
    sha256 = "139097708760baee65463781237f2294f74a399832283d32756a26ab05ba846c";
    revisions = {
      r0 = {
        nix = import ../hackage/snipcheck-0.1.0.0-r0-4b1e2bc91ea6d6ab03486f1aa82e1b0e721b7101e36bb782eff595ea1c6aa739.nix;
        revNum = 0;
        sha256 = "4b1e2bc91ea6d6ab03486f1aa82e1b0e721b7101e36bb782eff595ea1c6aa739";
      };
      r1 = {
        nix = import ../hackage/snipcheck-0.1.0.0-r1-eb580d58c35b39ec2d78c7798ca645ec5650a9d59398a4b21a07a895bdaa5562.nix;
        revNum = 1;
        sha256 = "eb580d58c35b39ec2d78c7798ca645ec5650a9d59398a4b21a07a895bdaa5562";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "808309060eb10cd548bb03c0d3e3b44e838a0702cb7f48d3215a7702d5f783cd";
    revisions = {
      r0 = {
        nix = import ../hackage/snipcheck-0.1.0.1-r0-bb2a9c691cb3edad2390274ce202e2c74e582b7f582a8a9a0acf0c62b7ee2945.nix;
        revNum = 0;
        sha256 = "bb2a9c691cb3edad2390274ce202e2c74e582b7f582a8a9a0acf0c62b7ee2945";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "f3378e14c6a13a514abf01e08f34f178e8a2d60cb203ba7b80fee435276fc696";
    revisions = {
      r0 = {
        nix = import ../hackage/snipcheck-0.1.0.2-r0-dbdad3b413fb0248c6d341da9db7e5f3861096aa1489b1560f7eb6df93c534e7.nix;
        revNum = 0;
        sha256 = "dbdad3b413fb0248c6d341da9db7e5f3861096aa1489b1560f7eb6df93c534e7";
      };
      default = "r0";
    };
  };
  "0.1.0.3" = {
    sha256 = "e0ba4792439c64b6e1485ca5bb1eb52e760594ec06936289bae9ff6dbf9332f5";
    revisions = {
      r0 = {
        nix = import ../hackage/snipcheck-0.1.0.3-r0-cc46ed64a69e1226c48dac47699725bbc89ead8280c0616ca7794253d62c95a5.nix;
        revNum = 0;
        sha256 = "cc46ed64a69e1226c48dac47699725bbc89ead8280c0616ca7794253d62c95a5";
      };
      default = "r0";
    };
  };
}