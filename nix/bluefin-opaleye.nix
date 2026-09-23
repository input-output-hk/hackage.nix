{
  "0.1.0.0" = {
    sha256 = "ccaf16d64b36c21c1cc0bbc5e6794dc2948b58d32ee95fe4e1d43e993e7b9885";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-opaleye-0.1.0.0-r0-b08c95b616271879ebcabceca72affddc3abde25fc21b2727d1367445c41b0bd.nix;
        revNum = 0;
        sha256 = "b08c95b616271879ebcabceca72affddc3abde25fc21b2727d1367445c41b0bd";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "92a13bcaaa013e18e1264f9ef1b919e9663104c1616930512c19dd9d77969c20";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-opaleye-0.2.0.0-r0-ba431fbbb002f0ef4993cc4a7e965738b2e5358a5967dfb21d28102d52a7ee1a.nix;
        revNum = 0;
        sha256 = "ba431fbbb002f0ef4993cc4a7e965738b2e5358a5967dfb21d28102d52a7ee1a";
      };
      default = "r0";
    };
  };
}