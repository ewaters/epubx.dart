/// A class to capture package-wide options.
class EpubOptions {
  /// If true, the ChapterReader will ignore file references that don't resolve.
  bool ignoreMissingReferences;

  /// If set, any error messages during Epub operations will be logged here.
  Function(String)? onError;

  /// Constructor.
  EpubOptions({
    this.ignoreMissingReferences = false,
    this.onError,
  });

  /// Calls [onError] with [msg] if it was set.
  void maybeOnError(String msg) {
    if (onError == null) {
      return;
    }
    onError!(msg);
  }
}

/// The set of global options. Will be changed via [setGlobalEpubOptions].
EpubOptions globalOptions = EpubOptions();

/// Set the given [options] as the global options for all classes in the
/// package.
void setGlobalEpubOptions(EpubOptions options) => globalOptions = options;
