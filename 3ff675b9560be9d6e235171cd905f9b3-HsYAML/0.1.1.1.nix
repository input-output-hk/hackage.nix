{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      exe = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "HsYAML";
        version = "0.1.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "2015-2018 Herbert Valerio Riedel\n, 2007-2008 Oren Ben-Kiki";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/HsYAML";
      url = "";
      synopsis = "Pure Haskell YAML 1.2 parser";
      description = "@HsYAML@ is a [YAML 1.2](http://yaml.org/spec/1.2/spec.html) parser implementation for Haskell.\n\nFeatures of @HsYAML@ include:\n\n* Pure Haskell implementation with small dependency footprint and emphasis on strict compliance with the [YAML 1.2 specification](http://yaml.org/spec/1.2/spec.html).\n* Direct decoding to native Haskell types via (@aeson@-inspired) typeclass-based API (see \"Data.YAML\").\n* Support for constructing custom YAML node graph representation (including support for cyclic YAML data structures).\n* Support for the standard (untyped) /Failsafe/, (strict) /JSON/, and (flexible) /Core/ \\\"schemas\\\" providing implicit typing rules as defined in the YAML 1.2 specification (including support for user-defined custom schemas).\n* Event-based API resembling LibYAML's Event-based API (see \"Data.YAML.Event\").\n* Low-level API access to lexical token-based scanner (see \"Data.YAML.Token\").\n";
      buildType = "Simple";
    };
    components = {
      "HsYAML" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.fail)) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs.nats);
      };
      exes = {
        "yaml-test" = {
          depends  = pkgs.lib.optionals (_flags.exe) [
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