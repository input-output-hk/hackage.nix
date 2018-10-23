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
        name = "shellish";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai <me@mornfall.net>";
      homepage = "http://repos.mornfall.net/shellish";
      url = "";
      synopsis = "shell-/perl- like (systems) programming in Haskell";
      description = "The shellisg package provides a single module for convenient\n\\\"systems\\\" programming in Haskell, similar in spirit to POSIX\nshells or PERL.\n\n* Elegance and safety is sacrificed for conciseness and\nswiss-army-knife-ness.\n\n* The interface exported by Shellish is thread-safe.\n\nOverall, the module should help you to get a job done quickly,\nwithout getting too dirty.";
      buildType = "Simple";
    };
    components = {
      "shellish" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.strict)
        ];
      };
    };
  }