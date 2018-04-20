{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "alex";
          version = "3.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Chis Dornan, Simon Marlow";
        maintainer = "Simon Marlow <marlowsd@gmail.com>";
        author = "Chris Dornan and Simon Marlow";
        homepage = "http://www.haskell.org/alex/";
        url = "";
        synopsis = "Alex is a tool for generating lexical analysers in Haskell";
        description = "Alex is a tool for generating lexical analysers in Haskell.\nIt takes a description of tokens based on regular\nexpressions and generates a Haskell module containing code\nfor scanning text efficiently. It is similar to the tool\nlex or flex for C/C++.";
        buildType = "Simple";
      };
      components = {
        exes = {
          alex = {
            depends  = [
              hsPkgs.base
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.array
                hsPkgs.containers
                hsPkgs.directory
              ]
              else [ hsPkgs.base ]);
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
        };
      };
    }