{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "time-interval";
        version = "0.1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://hub.darcs.net/fr33domlover/time-interval";
      url = "";
      synopsis = "Use a time unit class, but hold a concrete time type.";
      description = "Two common ways to represent and hold short time intervals seem to be:\n\n1. Hold time in microseconds as an 'Int' or 'Integer'\n\n2. Use time units abstraction, e.g. see the time-units package\n\nWhile the second option is a great abstraction to use in APIs, it works for\ndatatypes a bit less well than for function types. That's because a datatype\nwhich a 'Data.Time.Units.TimeUnit' field suddenly becomes polymorphic over\nthat field, and all function type signatures involving that datatype need to\nbe updated. This is less an issue for functions, because you don't specify\nthe type of every function at the call site.\n\nPerhaps there is a solution for that which involves datatype related\nlanguage extensions, but this package tries to offer a simple clean solution\nas follows. You store time in your datatype as an integer, but it is wrapped\nby an opaque 'Data.Time.Interval.TimeInterval' type. You then get the best of\nboth worlds:\n\n* On one hand, you can set the time field using any time unit thanks to the\ntime-units package, so you get a nice abstraction\n\n* On the other hand, your datatype holds a concrete time type\n\nThe time type can be equally used to represent time intervals, time durations\nand generally time lengths. But since high precision is used (microseconds),\nyou'll probably want this library for short time lengths (at most seconds,\nminutes, hours). For calendar based and related time functions and types, see\nthe @time@ package.";
      buildType = "Simple";
    };
    components = {
      "time-interval" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time-units)
        ];
      };
    };
  }