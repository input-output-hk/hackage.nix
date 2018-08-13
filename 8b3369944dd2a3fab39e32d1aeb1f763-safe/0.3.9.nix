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
      specVersion = "1.6";
      identifier = {
        name = "safe";
        version = "0.3.9";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2007-2015";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/safe#readme";
      url = "";
      synopsis = "Library of safe (exception free) functions";
      description = "A library wrapping @Prelude@/@Data.List@ functions that can throw exceptions, such as @head@ and @!!@.\nEach unsafe function has up to four variants, e.g. with @tail@:\n\n* @tail :: [a] -> [a]@, raises an error on @tail []@.\n\n* @tailMay :: [a] -> /Maybe/ [a]@, turns errors into @Nothing@.\n\n* @tailDef :: /[a]/ -> [a] -> [a]@, takes a default to return on errors.\n\n* @tailNote :: /String/ -> [a] -> [a]@, takes an extra argument which supplements the error message.\n\n* @tailSafe :: [a] -> [a]@, returns some sensible default if possible, @[]@ in the case of @tail@.\n\nThis package is divided into three modules:\n\n* \"Safe\" contains safe variants of @Prelude@ and @Data.List@ functions.\n\n* \"Safe.Foldable\" contains safe variants of @Foldable@ functions.\n\n* \"Safe.Exact\" creates crashing versions of functions like @zip@ (errors if the lists are not equal) and @take@ (errors if there are not enough elements), then wraps them to provide safe variants.";
      buildType = "Simple";
    };
    components = {
      "safe" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }