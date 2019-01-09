{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "base-prelude"; version = "1.2.1"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/base-prelude";
      url = "";
      synopsis = "The most complete prelude formed solely from the \"base\" package";
      description = "A library which aims to reexport all the non-conflicting and\nmost general definitions from the \\\"base\\\" package.\nThis includes APIs for applicatives, arrows, monoids, foldables, traversables,\nexceptions, generics, ST, MVars and STM.\n\nThis package will never have any dependencies other than \\\"base\\\".\n\n/Versioning policy/\n\nThe versioning policy of this package deviates from PVP in the sense\nthat its exports in part are transitively determined by the version of \\\"base\\\".\nTherefore it's recommended for the users of \\\"base-prelude\\\" to specify\nthe bounds of \\\"base\\\" as well.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }