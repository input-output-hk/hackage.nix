{
  "0.1.0.0" = {
    sha256 = "b195ef4186d534365fc941f772a46e4d62a159e6d63d9aa6223c6737f72c4083";
    revisions = {
      r0 = {
        nix = import ../hackage/nova-cache-0.1.0.0-r0-aaee824940dfb4aa594f07ae92438cfba854f19f593249a70ebccd0b34988cd7.nix;
        revNum = 0;
        sha256 = "aaee824940dfb4aa594f07ae92438cfba854f19f593249a70ebccd0b34988cd7";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "6ad61abed303ef96865860cbdf96034da121a6e39098b5923114458018c372b9";
    revisions = {
      r0 = {
        nix = import ../hackage/nova-cache-0.2.0.0-r0-aa00b4c5fefd86c57342779982941af4baceb33cb14cf41d044b3dd89cfd43ef.nix;
        revNum = 0;
        sha256 = "aa00b4c5fefd86c57342779982941af4baceb33cb14cf41d044b3dd89cfd43ef";
      };
      default = "r0";
    };
  };
}