{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "list-zip-def"; version = "0.1.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "muesli4@gmail.com";
      author = "Moritz Bruder";
      homepage = "";
      url = "";
      synopsis = "Provides zips with default values.";
      description = "Typical zip functions like `zip`, `zipWith`, and `zipWith3` will stop with the shortest list exhausted. Consequently information is lost. This library solves this issue by inserting default values. The `these` package serves a similar purpose but allows more than just lists to be zipped with the `Align` type class. However, zipping several lists and using defaults is not as easy.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }