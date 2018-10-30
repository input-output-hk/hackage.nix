{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "dirstream";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Easily stream directory contents in constant memory";
      description = "Use this library to read large directories as streams:\n\n* Use @ListT@ to assemble recursive directory traversals while still streaming\n\n* Use @pipes@ to read out the stream of results\n\n* Traversals only open directory streams lazily in response to demand\n\n* Avoid directories with insufficient permissions\n\nThis library works on both Unix, OS X, and Windows.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
    };
  }