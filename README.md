ZBCustomTransitions
===================

> **⚠️ This project is no longer maintained and has been archived.**
> It was written for iOS 7 and relies on APIs and patterns that are now considered legacy.
> Feel free to use it as a reference, but please do not expect any further updates or bug fixes.

ZBCustomTransitions is a demo iOS application written in Objective-C that showcases
**custom view controller transitions** using the `UIViewControllerAnimatedTransitioning`
protocol introduced in iOS 7.

## Features

- **Fallen Bricks animator** (`ZBFallenBricksAnimator`): splits the outgoing view
  into a configurable grid of snapshot tiles and drops them away using
  `UIDynamicAnimator` (gravity + collision + per-tile elasticity/density), while the
  incoming view fades in underneath.
- `UIViewController+Animator` category: a lightweight property wrapper that retains
  the `UIDynamicAnimator` for the lifetime of the view controller so it is not
  prematurely deallocated during an animation.

## Requirements

- iOS 7 or later
- Xcode 5 or later
- Objective-C (no ARC dependency — the project uses manual reference counting in
  some places)

## Usage

1. Open `ZBCustomTransitions.xcodeproj` in Xcode.
2. Build and run on a simulator or device running iOS 7+.
3. Tap any row in the list to trigger the custom presentation transition.

## License

This project is available under the MIT License.  See the repository for details.
