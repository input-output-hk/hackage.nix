{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sybinbase = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "HsSyck"; version = "0.51.20150815"; };
      license = "BSD-3-Clause";
      copyright = "Audrey Tang, Gaal Yahas, 2005-2015";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Fast, lightweight YAML loader and dumper";
      description = "This is a simple YAML ('Yet Another Markup Language') processor,\nused by the Pugs project for handling data serialization; this can be\nuseful for optimization and caching purposes.\n\nThis is an interface to the @syck@ C library for parsing and\ndumping YAML data. It lets you transform textual YAML data into an\nobject of type 'YamlNode', and vice versa, fast.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.sybinbase
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.hashtables)
            ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.syb)
            (hsPkgs.utf8-string)
            (hsPkgs.hashtables)
            ];
        };
      };
    }