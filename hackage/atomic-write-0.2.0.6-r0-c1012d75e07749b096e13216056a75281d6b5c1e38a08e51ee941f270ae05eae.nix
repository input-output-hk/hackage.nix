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
      specVersion = "1.10";
      identifier = {
        name = "atomic-write";
        version = "0.2.0.6";
      };
      license = "MIT";
      copyright = "2015-2018 Stack Builders Inc.";
      maintainer = "support@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "https://github.com/stackbuilders/atomic-write";
      url = "";
      synopsis = "Atomically write to a file";
      description = "\nAtomically write to a file on POSIX-compliant systems while preserving\npermissions.\n\nOn most Unix systems, `mv` is an atomic operation. This makes it simple to write\nto a file atomically just by using the mv operation. However, this will\ndestroy the permissions on the original file. This library does the following\nto preserve permissions while atomically writing to a file:\n\n* If an original file exists, take those permissions and apply them to the\ntemp file before `mv`ing the file into place.\n\n* If the original file does not exist, create a following with default\npermissions (based on the currently-active umask).\n\nThis way, when the file is `mv`'ed into place, the permissions will be the ones\nheld by the original file.\n\nThis library is based on similar implementations found in common libraries in\nRuby and Python:\n\n* <http://apidock.com/rails/File/atomic_write/class Ruby on Rails includes a similar method called atomic_write>\n\n* <https://github.com/chef/chef/blob/c4631816132fcfefaba3d123a1d0dfe8bc2866bb/lib/chef/file_content_management/deploy/mv_unix.rb#L23:L71 Chef includes atomic update functionality>\n\n* <https://github.com/sashka/atomicfile There is a python library for atomically updating a file>\n\nTo use `atomic-write`, import the module corresponding to the type you wish to\nwrite atomically, e.g., to write a (strict) ByteString atomically:\n\n> import System.AtomicWrite.Writer.ByteString\n\nThen you can use the atomicWriteFile function that accepts a `FilePath` and a\n`ByteString`, e.g.:\n\n> atomicWriteFile myFilePath myByteString";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.temporary)
          (hsPkgs.unix-compat)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "atomic-write-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.atomic-write)
            (hsPkgs.temporary)
            (hsPkgs.unix-compat)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }