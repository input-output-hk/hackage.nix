{
  "0.0.0.1" = {
    sha256 = "4515ad09d61062a04aa34f610bbc4d6176c5468081ca30ea971a3fec36160f50";
    revisions = {
      r0 = {
        nix = import ../hackage/reload-0.0.0.1-r0-d65761782771f26415b76a3b4561d912adfac1177c1cbde0fbfeba5fe927bb8a.nix;
        revNum = 0;
        sha256 = "d65761782771f26415b76a3b4561d912adfac1177c1cbde0fbfeba5fe927bb8a";
      };
      r1 = {
        nix = import ../hackage/reload-0.0.0.1-r1-45a0c196afbd549ce9e298bdae1c74475ff6f94848e91add5690d3db6ebaa281.nix;
        revNum = 1;
        sha256 = "45a0c196afbd549ce9e298bdae1c74475ff6f94848e91add5690d3db6ebaa281";
      };
      default = "r1";
    };
  };
}