{
  "0.1.0.1" = {
    sha256 = "936f4f89f63b13437bdc165b5eae81d619f42eb035619c3bb7cf1381489df860";
    revisions = {
      r0 = {
        nix = import ../hackage/llm-simple-0.1.0.1-r0-a5b1897d79ecf0a33e87bc9c1ac4752898f226989d29324aecd1296272a96587.nix;
        revNum = 0;
        sha256 = "a5b1897d79ecf0a33e87bc9c1ac4752898f226989d29324aecd1296272a96587";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "aaeb2552c587a9c082ce2cd643c469dab5189b9ef631d603c7396957d42fbba7";
    revisions = {
      r0 = {
        nix = import ../hackage/llm-simple-0.1.0.2-r0-db80568a56190abd566f0d2ba4ef459c0fa553c4f3345034a1e86e5bedc7844b.nix;
        revNum = 0;
        sha256 = "db80568a56190abd566f0d2ba4ef459c0fa553c4f3345034a1e86e5bedc7844b";
      };
      default = "r0";
    };
  };
}