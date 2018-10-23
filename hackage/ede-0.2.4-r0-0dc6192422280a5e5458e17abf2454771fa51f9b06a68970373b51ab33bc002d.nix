{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      build-executable = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ede";
        version = "0.2.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "http://github.com/brendanhay/ede";
      url = "";
      synopsis = "Templating language with similar syntax and features to Liquid or Jinja2.";
      description = "ED-E is a templating language written in Haskell with a specific set of features:\n\n* Logicless within reason. A small set of consistent predicates\nand expressions for formatting and presentational logic are provided.\n\n* Secure. No arbitrary code evaluation, with input data required to be fully specified\nat render time.\n\n* Stateless. Parsing and rendering are separate steps so that loading, parsing,\ninclude resolution, and embedding of the compiled template can optionally be\ndone ahead of time, amortising cost.\n\n* Markup agnostic. ED-E is used to write out everything from configuration files for\nsystem services, to HTML and formatted emails.\n\n* Control over purity. Users can choose pure or IO-based resolution of\n@include@ expressions.\n\n* No surprises. All parsing, type assurances, and rendering steps report helpful\nerror messages with line/column metadata. Variable shadowing, unprintable expressions,\nimplicit type coercion, and unbound variable access are all treated as errors.";
      buildType = "Simple";
    };
    components = {
      "ede" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.comonad)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parsers)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.text-manipulate)
          (hsPkgs.trifecta)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "ede" = {
          depends  = pkgs.lib.optionals (!(!flags.build-executable)) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.directory)
            (hsPkgs.ede)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "golden" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.ede)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
          ];
        };
      };
    };
  }