{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-locale = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hashable-time";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Karakulov <ankarakulov@gmail.com>";
      author = "Alexey Karakulov <ankarakulov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Hashable instances for Data.Time";
      description = "Hashable instances for types in Data.Time";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
        ] ++ (if flags.old-locale
          then [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]
          else [ (hsPkgs.time) ]);
      };
    };
  }