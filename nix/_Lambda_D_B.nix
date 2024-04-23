{
  "0.0.0.5" = {
    sha256 = "bafe4838b46b8eb8c604158e06dd2c55955e282fbedec3064b21a964119079d3";
    revisions = {
      r0 = {
        nix = import ../hackage/LambdaDB-0.0.0.5-r0-32b318a058295442e2b2ffa6f26b65345a53652bdf142de4db7c476cf94c7bfe.nix;
        revNum = 0;
        sha256 = "32b318a058295442e2b2ffa6f26b65345a53652bdf142de4db7c476cf94c7bfe";
      };
      default = "r0";
    };
  };
  "0.0.0.6" = {
    sha256 = "03a00a4282e5770270443f5038f6e64975940ee7d74d981bba1e50b4de92bf81";
    revisions = {
      r0 = {
        nix = import ../hackage/LambdaDB-0.0.0.6-r0-3c4605630a06dec91aa88fb9e491f119c1c971d8459465262aa759849a84f617.nix;
        revNum = 0;
        sha256 = "3c4605630a06dec91aa88fb9e491f119c1c971d8459465262aa759849a84f617";
      };
      default = "r0";
    };
  };
}