{
  "0.1.0.0" = {
    sha256 = "867b7d1546d5d345c153638c02d5a0d859e23ae9b62d85a2bb30a232fe8f991b";
    revisions = {
      r0 = {
        nix = import ../hackage/pollock-0.1.0.0-r0-c9b95b5144d788dfb0b79704e3bc706e6ce39114f100883977fd80db7eb34014.nix;
        revNum = 0;
        sha256 = "c9b95b5144d788dfb0b79704e3bc706e6ce39114f100883977fd80db7eb34014";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "f9e7415623c045139549ed34c7fa01a7b9ca2f95a337dbc412fcc745d01d8329";
    revisions = {
      r0 = {
        nix = import ../hackage/pollock-0.1.0.1-r0-36ca228aa40ca6c29b590d16e0e165f2212946882d190e63a20080c6ee449c29.nix;
        revNum = 0;
        sha256 = "36ca228aa40ca6c29b590d16e0e165f2212946882d190e63a20080c6ee449c29";
      };
      default = "r0";
    };
  };
}