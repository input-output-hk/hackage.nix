{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "posix-escape";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Quote arguments to be passed through the Unix shell";
      description = "This library provides functions to wrap a @String@ so it can be used\nwithin a Unix shell command line, and end up as a single argument\nto the program invoked.\n\nThe module @System.Posix.Escape@ is the safer option.  The module\n@System.Posix.Escape.Unicode@ has extra caveats which are documented\nwith that module.\n\nThere is a similar function within the @process@ package as\n@System.Process.Internals.translate@.";
      buildType = "Simple";
    };
    components = {
      "posix-escape" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }