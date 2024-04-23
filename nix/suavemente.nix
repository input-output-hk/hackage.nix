{
  "0.1.0.0" = {
    sha256 = "6a6f2cd6f83ac910c1b1262ceebc02a93d7a9e927b30062e30b36d4c0f932595";
    revisions = {
      r0 = {
        nix = import ../hackage/suavemente-0.1.0.0-r0-e474e272b8053421e7b79f0cef80f2679de8addcf959b9a1622f4540a20567e1.nix;
        revNum = 0;
        sha256 = "e474e272b8053421e7b79f0cef80f2679de8addcf959b9a1622f4540a20567e1";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "8a07d23259e3ca90c148d7d0da6a26066ff248be1be8ab79e8f598ae8772ba54";
    revisions = {
      r0 = {
        nix = import ../hackage/suavemente-0.2.0.0-r0-ad439fd93c974b8cc72685f121ede524a9a4f26d3ab56221762c71945370164b.nix;
        revNum = 0;
        sha256 = "ad439fd93c974b8cc72685f121ede524a9a4f26d3ab56221762c71945370164b";
      };
      default = "r0";
    };
  };
}