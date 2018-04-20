{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "cabal-bounds";
          version = "0.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel.trstenjak@gmail.com";
        author = "Daniel Trstenjak";
        homepage = "";
        url = "";
        synopsis = "A command line program for managing the bounds/versions of the dependencies in a cabal file.";
        description = "'cabal-bounds' is able to do two things:\n\n> - drop the bounds of the dependencies in the cabal file\n> - update the bounds of the dependencies in the cabal file using the cabal build information\n\n/Example: Raise the upper Bounds/\n\nIf you have several cabalized projects, then it can be quite time consuming to keep the\nbounds of your dependencies up to date. Especially if you're following the package versioning\npolicy, then you want to raise your upper bounds from time to time, to allow the building with\nnewer versions of the dependencies.\n\n'cabal-bounds' tries to automate this update process to some degree. So a typical update process might look like:\n\n> \$> # update the version infos of all libraries\n> \$> cabal update\n>\n> \$> # drops the upper bound of all dependencies in 'myproject.cabal', most likely you want to ignore 'base'\n> \$> cabal-bounds drop --upper --ignore=base myproject.cabal\n>\n> \$> # create a cabal sandbox for building of 'myproject'\n> \$> cabal sandbox init\n>\n> \$> # build 'myproject'\n> \$> cabal install\n>\n> \$> # update the upper bound of all dependencies in 'myproject.cabal' by the cabal build information\n> \$> cabal-bounds update --upper --ignore=base myproject.cabal dist/dist-sandbox-*/setup-config\n\n/Example: Bound Changes/\n\nThe '=>' shows what the result is of the operation for every dependency. Left is the dependency before\ncalling the command, right the one after calling.\n\n> \$> cabal drop myproject.cabal\n> lens >=4.0.1 && <4.1   =>   lens\n>\n> \$> cabal drop --upper myproject.cabal\n> lens >=4.0.1 && <4.1   =>   lens >=4.0.1\n\nIf the cabal build (the setup-config) uses 'lens 4.1.2', then the results of the 'update' command would be:\n\n> \$> cabal update myproject.cabal setup-config\n> lens >=4.0.1 && <4.1   =>   lens >=4.1.2 && <4.2\n> lens                   =>   lens >=4.1.2 && <4.2\n>\n> \$> cabal update --lower myproject.cabal setup-config\n> lens >=4.0.1 && <4.1   =>   lens >=4.1.2\n> lens <4.1              =>   lens >=4.1.2\n> lens                   =>   lens >=4.1.2\n>\n> \$> cabal update --upper myproject.cabal setup-config\n> lens >=4.0.1 && <4.1   =>   lens >=4.0.1 && <4.2\n> lens >=4.0.1           =>   lens >=4.0.1 && <4.2\n> lens                   =>   lens >=4.1.2 && <4.2\n\n/Installation/\n\nYou have to ensure, that the 'Cabal' library of 'cabal-bounds' matches the one used by the 'cabal' binary:\n\n> \$> cabal --version\n> cabal-install version 1.18.0.2\n> using version 1.18.1 of the Cabal library\n>\n> \$> cabal install --constraint=\"Cabal == 1.18.1\" cabal-bounds\n\nIf you update the 'cabal' binary and the used 'Cabal' library changes, then you have to rebuild 'cabal-bounds'.\n\n/Command Line Usage/\n\n> \$> cabal-bounds --help\n> cabal-bounds [COMMAND] ... [OPTIONS]\n>   A command line program for managing the bounds/versions of the dependencies\n>   in a cabal file.\n>\n> Common flags:\n>   -O --only=ITEM             Only the bounds of the dependency are modified.\n>   -I --ignore=ITEM           This dependency is ignored, not modified in any\n>                              way.\n>   -o --outputCabalFile=ITEM  Save modified cabal file to file, if empty, the\n>                              cabal file is modified inplace.\n>   -h --help                  Display help message\n>   -v --version               Print version information\n>\n> cabal-bounds drop [OPTIONS] CABAL-FILE\n>\n>   -U --upper                 Only the upper bound is dropped, otherwise both\n>                              - the lower and upper - bounds are dropped.\n>   -l --library               Only the bounds of the library are dropped.\n>   -e --executable=ITEM       Only the bounds of the executable are dropped.\n>   -t --testsuite=ITEM        Only the bounds of the test suite are dropped.\n>   -b --benchmark=ITEM        Only the bounds of the benchmark are dropped.\n>\n> cabal-bounds update [OPTIONS] CABAL-FILE SETUP-CONFIG-FILE\n>\n>   -L --lower                 Only the lower bound is updated.\n>   -U --upper                 Only the upper bound is updated.\n>   -l --library               Only the bounds of the library are updated.\n>   -e --executable=ITEM       Only the bounds of the executable are updated.\n>   -t --testsuite=ITEM        Only the bounds of the test suite are updated.\n>   -b --benchmark=ITEM        Only the bounds of the benchmark are updated.\n\n/Issues/\n\nPerhaps the currently most annoying thing is, that you have to live with the reformating of your\n'cabal' file done by the pretty printer of the 'Cabal' library.\n\nTo reformat your 'cabal' file without changing any bounds you can call 'cabal-bounds' with the name of\na section that isn't present in the 'cabal' file:\n\n> \$> cabal-bounds drop --executable=blub myproject.cabal";
        buildType = "Simple";
      };
      components = {
        cabal-bounds = {
          depends  = [
            hsPkgs.base
            hsPkgs.cmdargs
            hsPkgs.lens
            hsPkgs.strict
            hsPkgs.Cabal
          ];
        };
        exes = {
          cabal-bounds = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.lens
              hsPkgs.strict
              hsPkgs.Cabal
            ];
          };
        };
        tests = {
          cabal-bounds-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.lens
              hsPkgs.strict
              hsPkgs.Cabal
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.filepath
              hsPkgs.cabal-bounds
            ];
          };
        };
      };
    }