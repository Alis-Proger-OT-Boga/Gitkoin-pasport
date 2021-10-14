pragma solidity >=0.8.4;

interface IENSLabelBooker {
  // Logged when a booking is created.
  event NameBooked(uint256 indexed id, address indexed bookingAddress);
  // Logged when a booking is updated.
  event BookingUpdated(uint256 indexed id, address indexed bookingAddress);
  // Logged when a booking is burned.
  event BookingBurned(uint256 indexed id);

  /**
   * @notice Get the address of a booking.
   * @param label The booked label.
   * @return The address associated to the booking
   */
  function getBooking(string memory label) external view returns (address);

  /**
   * @notice Book a name.
   * @param label The label to book.
   * @param bookingAddress The address associated to the booking.
   *
   * Emits a {NameBooked} event.
   */
  function book(string memory label, address bookingAddress) external;

  /**
   * @notice Books a list of names.
   * @param labels The list of label to book.
   * @param bookingAddresses The list of addresses associated to the bookings.
   *
   * Emits a {NameBooked} event for each booking.
   */
  function batchBook(string[] memory labels, address[] memory bookingAddresses)
    external;

  /**
   * @notice Update a booking.
   * @param label The booked label.
   * @param bookingAddress The new address associated to the booking.
   *
   * Emits a {BookingUpdated} event.
   */
  function updateBook(string memory label, address bookingAddress) external;

  /**
   * @notice Update a list of bookings.
   * @param labels The list of labels of the bookings.
   * @param bookingAddresses The list of new addresses associated to the bookings.
   *
   * Emits a {BookingUpdated} event for each updated booking.
   */
  function batchUpdateBook(
    string[] memory labels,
    address[] memory bookingAddresses
  ) external;
}
