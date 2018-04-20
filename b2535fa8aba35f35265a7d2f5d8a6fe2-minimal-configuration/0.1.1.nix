{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "minimal-configuration";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mhitza@gmail.com";
        author = "Marius Ghita";
        homepage = "";
        url = "";
        synopsis = "Minimal ini like configuration library with a few extras";
        description = "The module exported provides the ability to manage a configuration file in\nthe users home directory (or the Windows equivalent). Where the configuration\ntakes the form of key=value, without sections, that for example an \\'.ini\\'\nwould have.\n\nThe library simplifies serilization/deserialization of the configuration into\na structure similar in behavior to a 'Map', as well as an interactive way to\nfill in values for simple cases.\n\nConsider the following example, where a user would run the application for the\nfirst time, it would ask him for his name; however on a followup run it would\njust print a greeting with his name.\n\n> import System.Config.File\n>\n> main = withConfiguration \".apprc\" \$ \\conf -> do\n>     let name = getV conf \"name\"\n>     case name of Just n  -> putStrLn \$ \"hello \" ++ n\n>                  Nothing -> do conf' <- fillInteractively conf [(\"name\", acceptNonBlank)]\n>                                saveConfiguration conf'";
        buildType = "Simple";
      };
      components = {
        minimal-configuration = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.tconfig
            hsPkgs.containers
          ];
        };
      };
    }