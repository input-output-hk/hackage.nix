{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { semigroups = true; tagged = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bifunctors"; version = "5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/bifunctors/";
      url = "";
      synopsis = "Bifunctors";
      description = "Bifunctors";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          ] ++ (pkgs.lib).optional (flags.tagged) (hsPkgs.tagged)) ++ (pkgs.lib).optional (flags.semigroups) (hsPkgs.semigroups);
        };
      };
    }