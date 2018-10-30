{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { exe = false; };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "HsYAML";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2015-2018 Herbert Valerio Riedel\n, 2007-2008 Oren Ben-Kiki";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/HsYAML";
      url = "";
      synopsis = "Pure Haskell YAML 1.2 parser";
      description = "@HsYAML@ is a [YAML 1.2](http://yaml.org/spec/1.2/spec.html) parser for Haskell.\n\nFeatures include:\n\n* Pure Haskell implementation with small dependency footprint and emphasis on strict compliance with the [YAML 1.2 specification](http://yaml.org/spec/1.2/spec.html)\n* Low-level API access to lexical token-based scanner (\"Data.YAML.Token\")\n* Event-based API resembling LibYAML's Event-based API (\"Data.YAML.Event\")\n* Support for constructing custom YAML node graph representation (including support for cyclic YAML data structures)\n* Direct decoding via typeclass-based API similiar to @aeson@ (\"Data.YAML\")\n* Support for /Failsafe/, /JSON/ and /Core/ schemas as defined in the YAML 1.2 specification (including support for user-defined custom schemas)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "yaml-test" = {
          depends  = pkgs.lib.optionals (flags.exe) [
            (hsPkgs.HsYAML)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.megaparsec)
            (hsPkgs.microaeson)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }