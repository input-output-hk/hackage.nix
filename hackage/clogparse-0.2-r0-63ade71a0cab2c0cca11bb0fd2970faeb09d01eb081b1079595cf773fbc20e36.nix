{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "clogparse";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parse IRC logs such as the #haskell logs on tunes.org";
      description = "Use this library to parse IRC logs saved by the @clog@ bot on Freenode.\nThis includes the logs of @#haskell@ which are available from\n<http://tunes.org/~nef/logs/haskell/>.\n\nSuggestions and patches are welcome.";
      buildType = "Simple";
    };
    components = {
      "clogparse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.timezone-olson)
          (hsPkgs.timezone-series)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }