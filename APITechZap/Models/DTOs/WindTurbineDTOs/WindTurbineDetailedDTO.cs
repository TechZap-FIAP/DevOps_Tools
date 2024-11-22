﻿namespace APITechZap.Models.DTOs.WindTurbineDTOs;

/// <summary>
/// DTO de Turbina Eólica Detalhada
/// </summary>
public class WindTurbineDetailedDTO
{
    /// <summary>
    /// Tamanho da Turbina Eólica
    /// </summary>
    public double? DsSize { get; set; }

    /// <summary>
    /// Material da Turbina Eólica
    /// </summary>
    public string? DsMaterial { get; set; }

    /// <summary>
    /// Preço da Turbina Eólica
    /// </summary>
    public double? DsPrice { get; set; }

    /// <summary>
    /// Tipo de Turbina Eólica
    /// </summary>
    public WindTurbineTypeDTO? WindTurbineTypeDTO { get; set; }
}
