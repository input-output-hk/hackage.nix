{
  "2.0" = {
    sha256 = "385ddbed687088d7bd2100d3ea1101008667b46dfbf9f6f044fb2b03a1705c8e";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-docdb-2.0-r0-f6e0550b84bb05dd51b36d75b56dd14cebc43ac128636e358bb9aaea5b9a0b1a.nix;
        revNum = 0;
        sha256 = "f6e0550b84bb05dd51b36d75b56dd14cebc43ac128636e358bb9aaea5b9a0b1a";
      };
      r1 = {
        nix = import ../hackage/amazonka-docdb-2.0-r1-1663102b3de733db45c656a40f144c046e85825749636d7895386586d1ec04fd.nix;
        revNum = 1;
        sha256 = "1663102b3de733db45c656a40f144c046e85825749636d7895386586d1ec04fd";
      };
      default = "r1";
    };
  };
}