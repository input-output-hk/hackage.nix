{
  "0.1.0.0" = {
    sha256 = "248ec21c94c0214fd1a5547340e39619f86c8c0d4c4a5f527bc2a3cf31748500";
    revisions = {
      r0 = {
        nix = import ../hackage/fuzzily-0.1.0.0-r0-74aa19cdfa57d953199be7dc7dd90c5ecd71c9d7bbb032e02ba9e9ab6a9c7f42.nix;
        revNum = 0;
        sha256 = "74aa19cdfa57d953199be7dc7dd90c5ecd71c9d7bbb032e02ba9e9ab6a9c7f42";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "71e3d71d43e352902395b6e70196273c8ee8f2a328f1a52e9992bb400819aa83";
    revisions = {
      r0 = {
        nix = import ../hackage/fuzzily-0.2.0.0-r0-72f456227a467ebbf9ecd4b052a594127ec1b6d1ac7a0fca5d4d3bfd7fb96410.nix;
        revNum = 0;
        sha256 = "72f456227a467ebbf9ecd4b052a594127ec1b6d1ac7a0fca5d4d3bfd7fb96410";
      };
      default = "r0";
    };
  };
}