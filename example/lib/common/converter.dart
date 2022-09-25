import 'package:preview/preview.dart';

import 'story_provider.dart';

class ConvertToPage implements ToPreviewPage<StoryProvider> {
  @override
  PreviewPage toPreviewPage(StoryProvider value) {
    return PreviewProvider.createAnonymous(
      previews: value.stories
          .map(
            (story) => Preview(
              builder: story.builder,
            ),
          )
          .toList(),
    );
  }
}
