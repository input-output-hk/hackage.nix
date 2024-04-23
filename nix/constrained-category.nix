{
  "0.1.0.0" = {
    sha256 = "3051c71e6157b877c5571d55b690f815b056b666ea4aebbf40d0f5d8bc972507";
    revisions = {
      r0 = {
        nix = import ../hackage/constrained-category-0.1.0.0-r0-c76bdc82639d80d7dde78dabb2ea967d65c22b3f9eb007ec6a51adab8e8f814b.nix;
        revNum = 0;
        sha256 = "c76bdc82639d80d7dde78dabb2ea967d65c22b3f9eb007ec6a51adab8e8f814b";
      };
      r1 = {
        nix = import ../hackage/constrained-category-0.1.0.0-r1-43b7789b2e0ad2d1e6a15ece9dd4ee1aa9ee31a999b651f2846dc9b6ffcff3cd.nix;
        revNum = 1;
        sha256 = "43b7789b2e0ad2d1e6a15ece9dd4ee1aa9ee31a999b651f2846dc9b6ffcff3cd";
      };
      r2 = {
        nix = import ../hackage/constrained-category-0.1.0.0-r2-8c7850faf42ecbefc611a7d6e0e08e519285f3d1bdc25b491c391d82ff2d4bfe.nix;
        revNum = 2;
        sha256 = "8c7850faf42ecbefc611a7d6e0e08e519285f3d1bdc25b491c391d82ff2d4bfe";
      };
      default = "r2";
    };
  };
}