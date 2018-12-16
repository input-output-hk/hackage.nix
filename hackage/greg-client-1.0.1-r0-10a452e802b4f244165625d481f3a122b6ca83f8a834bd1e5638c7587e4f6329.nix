{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "greg-client";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov, Dmitry Astapov 2010";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>, Dmitry Astapov <dastapov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>, Dmitry Astapov <dastapov@gmail.com>";
      homepage = "http://code.google.com/p/greg/";
      url = "";
      synopsis = "A scalable distributed logger with a high-precision global time axis.";
      description = "Haskell client to the \\\"greg\\\" distributed logger with a high-precision global time axis (<http://code.google.com/p/greg/>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.binary)
          (hsPkgs.system-uuid)
          (hsPkgs.hostname)
          (hsPkgs.network)
          (hsPkgs.clock)
          (hsPkgs.stm)
        ];
      };
    };
  }