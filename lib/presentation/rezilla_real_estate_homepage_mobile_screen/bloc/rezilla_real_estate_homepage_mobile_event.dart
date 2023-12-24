// ignore_for_file: must_be_immutable

part of 'rezilla_real_estate_homepage_mobile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RezillaRealEstateHomepageMobile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RezillaRealEstateHomepageMobileEvent extends Equatable {}

/// Event that is dispatched when the RezillaRealEstateHomepageMobile widget is first created.
class RezillaRealEstateHomepageMobileInitialEvent
    extends RezillaRealEstateHomepageMobileEvent {
  @override
  List<Object?> get props => [];
}
