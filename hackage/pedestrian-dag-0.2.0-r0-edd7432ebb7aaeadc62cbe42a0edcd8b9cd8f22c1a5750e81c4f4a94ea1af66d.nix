{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pedestrian-dag"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2018 Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/pedestrian-dag";
      url = "";
      synopsis = "A pedestrian implementation of directed acyclic graphs";
      description = "The library implements a pedestrian representation of\ndirected acyclic graphs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.binary)
          ];
        };
      };
    }