{
  "0.1.0.0" = {
    sha256 = "77a3068c095a9928566987632c5556a09c7e492a5a1506954985297b7468f4fe";
    revisions = {
      r0 = {
        nix = import ../hackage/tail-0.1.0.0-r0-d0aeb9e6088b3066256e3e7a2384184284a3f7c3b543ad9cfb61253028f5241a.nix;
        revNum = 0;
        sha256 = "d0aeb9e6088b3066256e3e7a2384184284a3f7c3b543ad9cfb61253028f5241a";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "df3e22e917a43b40f97ba4c7651188bf05984851b0b563e5a9ba88c198545a4c";
    revisions = {
      r0 = {
        nix = import ../hackage/tail-0.2.0.0-r0-38b053fcc70935460ae17518c72f5cdabbe3f875e9a90315408c18884f916874.nix;
        revNum = 0;
        sha256 = "38b053fcc70935460ae17518c72f5cdabbe3f875e9a90315408c18884f916874";
      };
      default = "r0";
    };
  };
}