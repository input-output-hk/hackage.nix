{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gingersnap"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tom@tinybop.com";
      author = "Tinybop Labs, tom-bop";
      homepage = "https://github.com/Tinybop/gingersnap";
      url = "";
      synopsis = "Tools for consistent and safe JSON APIs with snap-core and postgresql-simple";
      description = "Straightforward JSON API idioms for snap-core and postgresql-simple, that\nprevent DB connection leaks.\nSee the README for a tutorial and example use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.http-types)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.snap-core)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }