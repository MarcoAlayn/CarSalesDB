
### Base de datos CarSalesDB

#### 1. Descripción General
La base de datos `CarSalesDB` está diseñada para almacenar especificaciones de modelos de automóviles para una aplicación de ventas de autos. Contiene información sobre diferentes modelos de automóviles, incluyendo detalles como autonomía, potencia y velocidad máxima.

#### 2. Estructura de la Base de Datos

**Tablas:**
- **ModelSpecifications**: Almacena las especificaciones de los modelos de automóviles.

**Relaciones:**
- No hay relaciones con otras tablas en esta base de datos.

#### 3. Detalles de las Tablas

**ModelSpecifications**
| **Tipo**                | **Nombre**                   | **Ejemplo**                                                |
|-------------------------|------------------------------|------------------------------------------------------------|
| `UNIQUEIDENTIFIER`      | `Guid`                       | `d4f4e6a1-2e39-4d47-8d6f-97d2f1a6c18a`                    |
| `VARCHAR(50)`           | `Model`                      | `Model S`                                                  |
| `NVARCHAR(100)`         | `Autonomy_km`                | `578 km`                                                   |
| `NVARCHAR(100)`         | `QuarterMile`                | `9.23 a 250 km/h en trampa de velocidad`                   |
| `NVARCHAR(50)`          | `MaximumPower_hp`            | `1,020 hp`                                                 |
| `NVARCHAR(100)`         | `Acceleration_0_100_kmh`     | `De 0 a 100 km/h en 2.1 s menos el rodaje inicial`        |
| `NVARCHAR(50)`          | `Rims`                       | `19" o 21"`                                                |
| `NVARCHAR(50)`          | `LoadCapacity_l`             | `793 litros`                                               |
| `NVARCHAR(50)`          | `Weight_kg`                  | `2,167 kg`                                                 |
| `NVARCHAR(150)`         | `MaximumSpeed_kmh`           | `322 km/h cuando está equipado con actualizaciones de hardware de pago` |
| `NVARCHAR(50)`          | `DragCoefficient`            | `0.208 Cd`                                                 |
| `NVARCHAR(50)`          | `PropulsionSystem`           | `Tri Motor`                                                |
| `INT`                   | `MaxSupercharger_kW`         | `250`                                                      |
| `NVARCHAR(255)`         | `Warranty`                   | `Vehículo básico: 4 años u 80,000 km, lo que ocurra primero. Batería y unidad de potencia: 8 años o 240,000 km, lo que ocurra primero` |

#### 4. Procedimientos Almacenados y Funciones

**sp_GetAllModelSpecifications**
- **Descripción**: Selecciona todas las especificaciones de modelos de automóviles y las ordena.
- **Parámetros**:
  - `@Action INT`: Determina la acción a realizar (en este caso, siempre es 0).
- **Ejemplo de Uso**:
  ```sql
  EXEC sp_GetAllModelSpecifications @Action = 0;
  ```

#### 5. Índices y Claves

**ModelSpecifications**
- **Clave Primaria**: `Guid`
- **Índices**: No se especifican índices adicionales en la documentación.

#### 6. Datos de Ejemplo

**Inserciones:**
```sql
INSERT INTO ModelSpecifications (Guid, Model, Autonomy_km, QuarterMile, MaximumPower_hp, Acceleration_0_100_kmh, Rims, LoadCapacity_l, Weight_kg, MaximumSpeed_kmh, DragCoefficient, PropulsionSystem, MaxSupercharger_kW, Warranty)
VALUES
    (NEWID(), 'Model S', '578 km', '9.23 a 250 km/h en trampa de velocidad', '1,020 hp', 'De 0 a 100 km/h en 2.1 s menos el rodaje inicial', '19" o 21"', '793 litros', '2,167 kg', '322 km/h cuando está equipado con actualizaciones de hardware de pago', '0.208 Cd', 'Tri Motor', 250, 'Vehículo básico: 4 años u 80,000 km, lo que ocurra primero. Batería y unidad de potencia: 8 años o 240,000 km, lo que ocurra primero'),
    ...
```
