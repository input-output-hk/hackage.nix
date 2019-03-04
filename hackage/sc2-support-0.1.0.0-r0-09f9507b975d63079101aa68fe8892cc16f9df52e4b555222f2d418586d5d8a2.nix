{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "sc2-support"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sophie Taylor";
      maintainer = "Sophie Taylor <sophie@spacekitteh.moe>";
      author = "Sophie Taylor <sophie@spacekitteh.moe>";
      homepage = "https://github.com/spacekitteh/sc2hs";
      url = "";
      synopsis = "Support and utility library for sc2hs.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.lens-labels)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          ];
        };
      };
    }