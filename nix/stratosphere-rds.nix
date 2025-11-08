{
  "1.0.0" = {
    sha256 = "a8a8a875ccd41aa10d4f8f1753ece468a5ccc371e33f0792f03d1a8b5bb09855";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-rds-1.0.0-r0-52f323fd5f93de0dd13b2ea4829cfa581b5dcbbea32771d00f94329434b1389e.nix;
        revNum = 0;
        sha256 = "52f323fd5f93de0dd13b2ea4829cfa581b5dcbbea32771d00f94329434b1389e";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "827dcc29a636931b473ec937eba2e990cf123ba13608424e3ade2bb346a7ec49";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-rds-1.0.1-r0-4047fa0aa66c3ad1b8d463eaf16e0cf6ce71e485be5f9cf60b2539aa21759896.nix;
        revNum = 0;
        sha256 = "4047fa0aa66c3ad1b8d463eaf16e0cf6ce71e485be5f9cf60b2539aa21759896";
      };
      default = "r0";
    };
  };
}