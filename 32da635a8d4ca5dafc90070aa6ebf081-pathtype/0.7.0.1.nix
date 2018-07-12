{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-time = true;
      buildtools = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pathtype";
          version = "0.7.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@henning-thielemann.de, ben@moseley.name";
        author = "Ben Moseley, Ben Millwood, Henning Thielemann";
        homepage = "http://hub.darcs.net/thielema/pathtype/";
        url = "";
        synopsis = "Type-safe replacement for System.FilePath etc";
        description = "This package provides type-safe access to filepath manipulations.\n\n\"System.Path\" is designed to be used instead of \"System.FilePath\".\n(It is intended to provide versions of functions from that\nmodule which have equivalent functionality but are more\ntypesafe). \"System.Path.Directory\" is a companion module\nproviding a type-safe alternative to \"System.Directory\".\n\nThe heart of this module is the @'Path' ar fd@ abstract type which\nrepresents file and directory paths. The idea is that there are\ntwo type parameters - the first should be 'Abs' or 'Rel',\nand the second 'File' or 'Dir'. A number of type synonyms are\nprovided for common types:\n\n> type AbsFile     = Path Abs File\n> type RelFile     = Path Rel File\n> type AbsDir      = Path Abs Dir\n> type RelDir      = Path Rel Dir\n>\n> type AbsPath  fd = Path Abs fd\n> type RelPath  fd = Path Rel fd\n> type FilePath ar = Path ar File\n> type DirPath  ar = Path ar Dir\n\nThe type of the 'combine' (aka '</>') function gives the idea:\n\n> (</>) :: DirPath ar -> RelPath fd -> Path ar fd\n\nTogether this enables us to give more meaningful types to\na lot of the functions, and (hopefully) catch a bunch more\nerrors at compile time.\n\nYou can use the construction functions as follows:\n\n> f :: Path.RelFile\n> f = relDir \"tmp\" </> relFile \"someFile\" <.> \"ext\"\n\nor...\n\n> f :: Path.RelFile\n> f = dirPath \"tmp\" </> filePath \"someFile\" <.> \"ext\"\n\nor...\n\n> f :: Path.RelFile\n> f = path \"tmp\" </> path \"someFile\" <.> \"ext\"\n\nor just...\n\n> f :: Path.RelFile\n> f = relFile \"tmp/someFile.ext\"\n\nThe first and the last implementations force the most specific types\nand thus should be prefered.\n\nOverloaded string literals are no longer supported,\nsince this extension is intended for alternative text storage types.\nIt would also decrease the type safety\nif you could omit the path type and let the compiler guess its type.\n\nYou will typically want to import as follows:\n\n> import qualified System.Path.Directory as Dir\n> import qualified System.Path.IO as PathIO\n> import qualified System.Path as Path\n> import System.Path ((</>))\n\n\"System.Path.Generic\" provides all functions with the OS as type parameter.\n\"System.Path.Posix\" and \"System.Path.Windows\"\noffers only path constructors and destructors\nfixed to the corresponding operating system.\n\"System.Path\" exports either \"System.Path.Posix\" or \"System.Path.Windows\"\ndepending on the host system\nand additionally the manipulation functions from \"System.Path.Generic\".\nThis mix should be appropriate for the average use\nand should free the user from writing type annotations.\n\nThe basic API (and properties satisfied) are heavily influenced\nby Neil Mitchell's \"System.FilePath\" module.\n\n\nSome notes on how to choose proper type parameters:\n\nThe @ar@ and the @fd@ type parameters have quite different meaning.\nThe types @Abs@ and @Rel@ refer to a property of the path,\nwhereas the type @File@ and @Dir@ refers to a property of a disk object.\nYou can decide whether a path is absolute or relative\nby just watching (the beginning of) the path string.\nIn contrast to that, you have to access the disk\nin order to check the existence and type of an disk object.\nEven more, the disk object might change at any time,\ne.g. the user might delete a file and create a directory of the same name,\nor the disk object might not exist,\nand the purpose of the path is to create an according file or directory.\nThat's why even if you have a path of type @FilePath ar@,\nevery function accessing the file must check\nthat the refered object exists and is a file.\nConversely, there is not much sense in checking the disk object type\nand then chosing the path accordingly.\nInstead, you must choose the path type according\nto what type of disk object your application needs.\nThe reality check must be performed\nand is performed by the standard functions\nfor every access to the object.\nIf an disk object is not of the type required by the path type\nthen this is a runtime exception that must be handled at runtime\nbut it is not a programming error.\n\nSometimes you have to change the type of a path\nas an intermediate step to construct a path for an object of different type.\nE.g. you may convert the path \\\"pkg\\\" from @DirPath@ to @FilePath@\nbecause in the next step you like to extend it to \\\"pkg.tar.gz\\\".\nThis is valid use of the @Path@ type.\nE.g. the function @dropExtensions@\nreduces the @FilePath@ \\\"pkg.tar.gz\\\" to the new @FilePath@ \\\"pkg\\\"\nalthough no-one expects that there is or will be a file with name \\\"pkg\\\".\nThus, if a function has a @FilePath@ parameter\nthen there is no warranty that it accesses the according file\nand does not touch related disk objects.\nIt may well be that the function derives other file and directory names\nfrom the path and accesses them.\nThat is, a @FilePath@ or @DirPath@ parameter\nis mainly for documentation purposes\nbut it cannot prevent you seriously from any damage.\n\nHow to cope with user input?\nYou may get a path from the user, e.g. as command-line argument.\nIt might be either absolute or relative\nand it might refer to an actual file or directory or\nto something yet non-existing.\nIn most cases it will not be important\nwhether the path is absolute or relative,\nthus you should choose the @AbsOrRel@ type parameter.\nIf somewhere in the program an @Abs@ path is needed\nthen you can assert that the path is actually absolutized somewhere\ne.g. by @dynamicMakeAbsolute@.\nIf you prevent usage of @genericMakeAbsolute@\nthen you avoid to absolutize a path that is already absolutized.\n\nThe choice of the @fd@ type parameter follows a different reasoning:\nOften you have a clear idea of\nwhether the user must pass a file or directory path.\nThe rule is: Just give the path the type you expect\nbut do not perform any checking\n(unless you want to warn the user earlier about imminent danger).\nThe disk object type must checked for every access to the object, anyway,\nso there is no point in checking it immediately.\nWith your choice of the @fd@ parameter\nyou just document its intended use.\n\nIt might be that the path is only a base name\nused to construct other directory and file names.\nE.g. for an Audacity project named @music@\nyou have to create the directory @music_data@ and the file @music.aup@.\nIn this case we recommend to give @music@ the type @FilePath@.\nThis type warrants that there is at least one final path component\nin contrast to a directory path that might be empty.\nYou can easily convert a file path to a directory path\nusing @Path.dirFromFile@.\nThe reverse conversion is partial.\n\n\nSome notes on file system links:\n\nThis package does not explicitly handle file system links.\nWe treat a file path containing links like any other file path.\nThe same holds for directory paths.\nA link is handled like any other path component.\n\n\nSome notes on drive-relative paths on Windows:\n\nWe use the @Rel@ type for paths that can be relative to any directory.\nWe use the @Abs@ type for all other paths,\ni.e. for paths with explicit locations or\nwith restrictions on the set of locations.\nWindows has a notion of drives and\nmaintains a current directory for every drive.\nE.g. the path @\\\"c:text.txt\\\"@ refers to the current directory of drive @C@.\nSince it cannot be freely combined with other directories\nwe treat this path like an absolute path.\nThis is consistent with the behaviour of the @filepath@ package.\nE.g. @filepath@ evaluates all of the expressions\n@\\\"\\\\\\\\abs\\\" \\<\\/\\> \\\"c:driverel\\\"@, @\\\"c:\\\\\\\\abs\\\" \\<\\/\\> \\\"c:driverel\\\"@,\n@\\\"d:\\\\\\\\abs\\\" \\<\\/\\> \\\"c:driverel\\\"@ to @\\\"c:driverel\\\"@.\nIn our package you would have to use @genericMakeAbsolute@\nbut we recommend to avoid its use.\n\nRelated packages:\n\n* @path@: Provides a wrapper type around 'FilePath'\nand maps to functions from @filepath@ package.\nThis warrants consistency with @filepath@ functions.\nRequires Template Haskell.\n\n* @data-filepath@:\nRequires 'Typeable' and Template Haskell.";
        buildType = "Simple";
      };
      components = {
        "pathtype" = {
          depends  = [
            hsPkgs.utility-ht
            hsPkgs.QuickCheck
            hsPkgs.deepseq
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.tagged
            hsPkgs.base
          ] ++ (if _flags.old-time
            then [
              hsPkgs.directory
              hsPkgs.old-time
            ]
            else [ hsPkgs.directory ]);
        };
        exes = {
          "create-pathtype-test" = {
            depends  = pkgs.lib.optionals _flags.buildtools [
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.pathtype
              hsPkgs.random
              hsPkgs.base
            ];
          };
        };
      };
    }