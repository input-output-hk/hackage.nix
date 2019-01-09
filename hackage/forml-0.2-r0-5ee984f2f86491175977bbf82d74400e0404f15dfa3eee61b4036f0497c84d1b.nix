{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "forml"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "steinlink@gmail.com";
      author = "Andrew Stein";
      homepage = "http://texodus.github.com/forml";
      url = "";
      synopsis = "A statically typed, functional programming language";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "forml" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
            (hsPkgs.indents)
            (hsPkgs.containers)
            (hsPkgs.GraphSCC)
            (hsPkgs.pandoc)
            (hsPkgs.jmacro)
            (hsPkgs.MissingH)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.ansi-terminal)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.urlencoded)
            (hsPkgs.file-embed)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.utf8-string)
            (hsPkgs.ghc-prim)
            (hsPkgs.cereal)
            (hsPkgs.zlib)
            (hsPkgs.hslogger)
            ];
          };
        };
      };
    }