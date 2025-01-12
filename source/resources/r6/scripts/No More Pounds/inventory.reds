module NoMorePounds.inventory

@wrapMethod(SubMenuPanelLogicController)
public final func HandlePlayerWeightUpdated(value: Float, maxWeight: Int32) -> Void {
    let value = MeasurementUtils.ValueToMetric(value, EMeasurementUnit.Pound);
    let maxWeight = Cast<Int32>(MeasurementUtils.ValueToMetric(Cast<Float>(maxWeight), EMeasurementUnit.Pound));

    wrappedMethod(value, maxWeight);
}

@wrapMethod(SubMenuPanelLogicController)
public final func HandlePlayerMaxWeightUpdated(value: Int32, curInventoryWeight: Float) -> Void {
    let value = Cast<Int32>(MeasurementUtils.ValueToMetric(Cast<Float>(value), EMeasurementUnit.Pound));
    let curInventoryWeight = MeasurementUtils.ValueToMetric(curInventoryWeight,EMeasurementUnit.Pound);

    wrappedMethod(value, curInventoryWeight);
  }

// TODO: Vendor screens
// TODO: Weight label
// TODO: Loot screen
