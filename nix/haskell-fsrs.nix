{
  "7.0.0" = {
    sha256 = "817a73d2c461fdd4674ca8c5a2d47c5572a0267ebfee007b75eb5c65ebd5acc7";
    revisions = {
      r0 = {
        nix = import ../hackage/haskell-fsrs-7.0.0-r0-47ac8a0cfa9ed8b291451977a07e847d3cd186f4ccc56033d45676f6595f8b49.nix;
        revNum = 0;
        sha256 = "47ac8a0cfa9ed8b291451977a07e847d3cd186f4ccc56033d45676f6595f8b49";
      };
      default = "r0";
    };
  };
  "7.1.0" = {
    sha256 = "775b666182e630b5c2ab481e15ca2058a5311ba147f2202a7012a88390225be5";
    revisions = {
      r0 = {
        nix = import ../hackage/haskell-fsrs-7.1.0-r0-e529f5407032f7aee49440f351e4c962f28f42619c980b59c98a785ae2363a66.nix;
        revNum = 0;
        sha256 = "e529f5407032f7aee49440f351e4c962f28f42619c980b59c98a785ae2363a66";
      };
      default = "r0";
    };
  };
}