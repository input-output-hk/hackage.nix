{
  "0.0.0" = {
    sha256 = "5c23c174f198afb70804fc5ec0232ee69c084339bb7bbe072f045514c9a9e9df";
    revisions = {
      r0 = {
        nix = import ../hackage/every-0.0.0-r0-535631d58f34cb5c325943be8016753dac4c456a2ad3950f4ea1dbf4457cf828.nix;
        revNum = 0;
        sha256 = "535631d58f34cb5c325943be8016753dac4c456a2ad3950f4ea1dbf4457cf828";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "5d0ff0e4cefb094c44b55defa283146b16b925722a2eb244a5ef4364737980e5";
    revisions = {
      r0 = {
        nix = import ../hackage/every-0.0.1-r0-234c0f287bd464baa1039814c39ba63699d941395beb1ada7ec04972a2b303aa.nix;
        revNum = 0;
        sha256 = "234c0f287bd464baa1039814c39ba63699d941395beb1ada7ec04972a2b303aa";
      };
      default = "r0";
    };
  };
}