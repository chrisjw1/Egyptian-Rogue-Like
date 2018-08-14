class RegenAttribute
  new: (max,regen) =>
    @max = max
    @regen = regen
    @current = max

  spend: (amount) =>
    if @current >= amount
      @current -= amount
      return true
    else
      return false

  change: (amount) =>
    @current += amount
    if @current > @max
      @current = @max
    else if @current < 0
      @current = 0

  update: (dt) =>
    @change(dt * @regen)



return RegenAttribute
