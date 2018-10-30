{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      executable = false;
      network-uri = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "scholdoc-texmath";
        version = "0.1.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "timtylin@gmail.com";
      author = "Tim T.Y. Lin";
      homepage = "http://github.com/timtylin/scholdoc-texmath";
      url = "";
      synopsis = "Scholdoc fork of texmath";
      description = "This package is a fork of @texmath@, intended to support\nthe development of Scholdoc. It is currently just a\ntrivial fork just so it can compile against\n@scholdoc-types@ without polluting the @texmath@ package\nnamespace.\n\nThis package is currently up to date with @taxmath@\nversion 0.8.0.1\n\nThe @texmath@ library provides functions to read and write\nTeX math, presentation MathML, and OMML (Office Math\nMarkup Language, used in Microsoft Office). For\ndescriptions of the original @texmath@ package, please\nvisit <http://hackage.haskell.org/package/texmath>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.xml)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.scholdoc-types)
          (hsPkgs.mtl)
        ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "texmath" = {
          depends  = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.base)
            (hsPkgs.scholdoc-texmath)
            (hsPkgs.xml)
            (hsPkgs.scholdoc-types)
            (hsPkgs.split)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ] ++ (if flags.network-uri
            then [ (hsPkgs.network-uri) ]
            else [ (hsPkgs.network) ]);
        };
      };
      tests = {
        "test-texmath" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.scholdoc-texmath)
            (hsPkgs.xml)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.split)
          ];
        };
      };
    };
  }