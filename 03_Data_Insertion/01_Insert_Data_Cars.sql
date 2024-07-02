INSERT INTO Cars
    (Guid, Model, TotalLength_mm, TotalWidth_mm, TotalHeight_mm, Wheelbase_mm, Acceleration_0_100_km_h_seconds, MaximumSpeed_km_h, Power_kW, BatteryCapacity_kWh, WLTP_Range_km, ChargingTime_0_100_AC, ChargingTime_10_80_DC, CurbWeight_kg, LoadCapacity_kg, TrunkCapacity_liters, ABSBrakes, TractionControl, LaneKeepingAssist, Airbags, AutomaticClimateControl, IntegratedNavigationSystem, ElectricallyAdjustableSeats, GlassPanoramicRoof, CentralTouchscreen_inches, BluetoothWiFiConnectivity, PremiumSoundSystem, AdjustableDrivingModes, BasePrice_USD, NumberOfSeats)
VALUES
    -- Tesla Model S
    (NEWID(), 'Model S', 4970, 1964, 1445, 2960, 2.1, 322, 750, 100, 652, '6-10 hours', '30 minutes', 2100, 500, 894, 1, 1, 1, 1, 1, 1, 1, 1, 17, 1, 1, 1, 79990.00, 5),
    -- Tesla Model 3
    (NEWID(), 'Model 3', 4694, 1849, 1443, 2875, 3.3, 261, 350, 75, 580, '6-10 hours', '30 minutes', 1745, 500, 425, 1, 1, 1, 1, 1, 1, 1, 0, 15, 1, 1, 1, 39990.00, 5),
    -- Tesla Model X
    (NEWID(), 'Model X', 5037, 2070, 1684, 2965, 2.6, 262, 750, 100, 580, '6-10 hours', '30 minutes', 2489, 650, 2180, 1, 1, 1, 1, 1, 1, 1, 1, 17, 1, 1, 1, 89990.00, 7),
    -- Tesla Model Y
    (NEWID(), 'Model Y', 4751, 1921, 1624, 2890, 3.7, 241, 340, 75, 505, '6-10 hours', '30 minutes', 2003, 650, 854, 1, 1, 1, 1, 1, 1, 1, 0, 15, 1, 1, 1, 49990.00, 5);