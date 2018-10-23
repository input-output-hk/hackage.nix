{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fmt";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom Kazak <yom@artyom.me>,\nDmitry Kovanikov <kovanikov@gmail.com>";
      homepage = "http://github.com/aelve/fmt";
      url = "";
      synopsis = "A new formatting library";
      description = "A new formatting library that tries to be simple to understand while still\nbeing powerful and providing more convenience features than other libraries\n(like functions for pretty-printing maps and lists, or a function for\nprinting arbitrary datatypes using generics).\n\nA comparison with other libraries:\n\n* @printf@ (from @Text.Printf@) takes a formatting string and uses some\ntype tricks to accept the rest of the arguments polyvariadically. It's\nvery concise, but there are some drawbacks – it can't produce @Text@\n(you'd have to @T.pack@ it every time) and it doesn't warn you at\ncompile-time if you pass wrong arguments or not enough of them.\n\n* <https://hackage.haskell.org/package/text-format text-format> takes a\nformatting string with angle brackets denoting places where arguments\nwould be substituted (the arguments themselves are provided via a\ntuple). If you want to apply formatting to some of the arguments, you\nhave to use one of the provided formatters. Like @printf@, it can fail at\nruntime, but at least the formatters are first-class (and you can add new\nones).\n\n* <https://hackage.haskell.org/package/formatting formatting> takes a\nformatting template consisting of pieces of strings interleaved with\nformatters; this ensures that arguments always match their placeholders.\n@formatting@ provides lots of formatters and generally seems to be the\nmost popular formatting library here. Unfortunately, at least in my\nexperience writing new formatters can be awkward and people sometimes\nhave troubles understanding how @formatting@ works.\n\n* <https://hackage.haskell.org/package/fmt fmt> (i.e. this library)\nprovides formatters that are ordinary functions, and a bunch of operators\nfor concatenating formatted strings; those operators also do automatic\nconversion. There are some convenience formatters which aren't present in\n@formatting@ (like ones for formatting maps, lists, converting to base64,\netc). Some find the operator syntax annoying, while others like it.";
      buildType = "Simple";
    };
    components = {
      "fmt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.microlens)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.fmt)
            (hsPkgs.hspec)
            (hsPkgs.neat-interpolation)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "benches" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.fmt)
            (hsPkgs.formatting)
            (hsPkgs.interpolate)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }